  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x4, %r9                    #  1     0     10     OPC=movq_r64_imm64  
  addq %r9, %r9                     #  2     0xa   3      OPC=addq_r64_r64    
  callq .read_of_into_rbx           #  3     0xd   5      OPC=callq_label     
  setb %ch                          #  4     0x12  3      OPC=setb_rh         
  callq .move_016_008_cx_r12b_r13b  #  5     0x15  5      OPC=callq_label     
  xaddb %r12b, %bl                  #  6     0x1a  4      OPC=xaddb_r8_r8     
  retq                              #  7     0x1e  1      OPC=retq            
                                                                              
.size target, .-target
