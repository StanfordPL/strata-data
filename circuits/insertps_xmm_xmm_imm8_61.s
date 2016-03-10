  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vxorpd %xmm12, %xmm12, %xmm10      #  2     0x5   5      OPC=vxorpd_xmm_xmm_xmm      
  vpunpckhdq %xmm10, %xmm9, %xmm14   #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm14, %xmm8, %xmm8        #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm      
  movapd %xmm8, %xmm1                #  5     0x14  5      OPC=movapd_xmm_xmm          
  retq                               #  6     0x19  1      OPC=retq                    
                                                                                       
.size target, .-target
