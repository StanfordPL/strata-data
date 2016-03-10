  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  xorw %ax, %ax           #  1     0     3      OPC=xorw_r16_r16   
  notw %ax                #  2     0x3   3      OPC=notw_r16       
  movsbq %al, %r12        #  3     0x6   4      OPC=movsbq_r64_r8  
  addq %r12, %rbx         #  4     0xa   3      OPC=addq_r64_r64   
  callq .set_szp_for_rbx  #  5     0xd   5      OPC=callq_label    
  retq                    #  6     0x12  1      OPC=retq           
                                                                   
.size target, .-target
