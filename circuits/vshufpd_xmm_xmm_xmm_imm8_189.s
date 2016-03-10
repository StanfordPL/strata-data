  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movapd %xmm3, %xmm14           #  1     0     5      OPC=movapd_xmm_xmm         
  vmovss %xmm14, %xmm3, %xmm9    #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm     
  vpbroadcastq %xmm9, %xmm9      #  3     0xa   5      OPC=vpbroadcastq_xmm_xmm   
  vunpckhpd %xmm9, %xmm2, %xmm1  #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  5     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
