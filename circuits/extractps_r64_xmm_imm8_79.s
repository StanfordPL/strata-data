  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                        
.target:                                    #        0     0      OPC=<label>                   
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label               
  vfnmsub213sd %xmm1, %xmm1, %xmm13         #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  cvtss2sd %xmm12, %xmm13                   #  3     0xa   5      OPC=cvtss2sd_xmm_xmm          
  vmovdqa %ymm13, %ymm14                    #  4     0xf   5      OPC=vmovdqa_ymm_ymm           
  vunpckhps %xmm14, %xmm1, %xmm3            #  5     0x14  5      OPC=vunpckhps_xmm_xmm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  6     0x19  5      OPC=callq_label               
  callq .move_032_064_r8d_r9d_rbx           #  7     0x1e  5      OPC=callq_label               
  retq                                      #  8     0x23  1      OPC=retq                      
                                                                                                
.size target, .-target
