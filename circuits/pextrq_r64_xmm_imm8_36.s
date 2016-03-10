  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP  Bytes  Opcode              
.target:                            #        0    0      OPC=<label>         
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label     
  stc                               #  2     0x5  1      OPC=stc             
  callq .read_cf_into_rbx           #  3     0x6  5      OPC=callq_label     
  cmovbq %r10, %rbx                 #  4     0xb  4      OPC=cmovbq_r64_r64  
  retq                              #  5     0xf  1      OPC=retq            
                                                                             
.size target, .-target
