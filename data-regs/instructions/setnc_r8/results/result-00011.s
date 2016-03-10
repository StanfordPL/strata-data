  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x1, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  movw %bx, %bx                     #  2     0xa   3      OPC=movw_r16_r16    
  callq .read_cf_into_rcx           #  3     0xd   5      OPC=callq_label     
  callq .move_016_008_cx_r12b_r13b  #  4     0x12  5      OPC=callq_label     
  xorb %r12b, %bl                   #  5     0x17  3      OPC=xorb_r8_r8      
  retq                              #  6     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
