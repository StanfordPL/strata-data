  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode               
.target:                          #        0    0      OPC=<label>          
  xorq %rbx, %rbx                 #  1     0    3      OPC=xorq_r64_r64     
  callq .move_128_064_xmm1_r8_r9  #  2     0x3  5      OPC=callq_label      
  cmovnsl %r8d, %ebx              #  3     0x8  4      OPC=cmovnsl_r32_r32  
  retq                            #  4     0xc  1      OPC=retq             
                                                                            
.size target, .-target
