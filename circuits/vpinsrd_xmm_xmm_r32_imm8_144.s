  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label         
  movd %ebx, %xmm10                 #  2     0x5   5      OPC=movd_xmm_r32        
  callq .move_064_128_r10_r11_xmm2  #  3     0xa   5      OPC=callq_label         
  vmovss %xmm10, %xmm2, %xmm1       #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm  
  retq                              #  5     0x14  1      OPC=retq                
                                                                                  
.size target, .-target
