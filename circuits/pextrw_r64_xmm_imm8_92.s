  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode               
.target:                          #        0    0      OPC=<label>          
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label      
  xorq %rbx, %rbx                 #  2     0x5  3      OPC=xorq_r64_r64     
  cmovncw %r9w, %bx               #  3     0x8  5      OPC=cmovncw_r16_r16  
  retq                            #  4     0xd  1      OPC=retq             
                                                                            
.size target, .-target
