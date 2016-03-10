  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovsxwq %xmm1, %ymm13         #  1     0     5      OPC=vpmovsxwq_ymm_xmm      
  vunpckhps %xmm13, %xmm1, %xmm3  #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  3     0xa   5      OPC=callq_label            
  movzbl %r9b, %ebx               #  4     0xf   4      OPC=movzbl_r32_r8          
  xchgl %ebx, %r9d                #  5     0x13  3      OPC=xchgl_r32_r32          
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
