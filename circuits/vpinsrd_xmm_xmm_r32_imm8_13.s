  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movd %ebx, %xmm13                               #  2     0x5   5      OPC=movd_xmm_r32            
  addss %xmm2, %xmm8                              #  3     0xa   5      OPC=addss_xmm_xmm           
  vpunpckldq %xmm13, %xmm8, %xmm15                #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vminss %xmm2, %xmm2, %xmm14                     #  5     0x14  4      OPC=vminss_xmm_xmm_xmm      
  movss %xmm14, %xmm15                            #  6     0x18  5      OPC=movss_xmm_xmm           
  vmovsd %xmm15, %xmm14, %xmm1                    #  7     0x1d  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  8     0x22  1      OPC=retq                    
                                                                                                    
.size target, .-target
