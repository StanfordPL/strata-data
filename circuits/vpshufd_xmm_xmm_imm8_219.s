  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm7          #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vunpcklpd %xmm7, %xmm7, %xmm3   #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm   
  vandps %xmm2, %xmm7, %xmm0      #  3     0x8   4      OPC=vandps_xmm_xmm_xmm      
  vpunpckhdq %xmm3, %xmm7, %xmm7  #  4     0xc   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  haddps %xmm0, %xmm0             #  5     0x10  4      OPC=haddps_xmm_xmm          
  vmovsd %xmm0, %xmm2, %xmm3      #  6     0x14  4      OPC=vmovsd_xmm_xmm_xmm      
  vsqrtsd %xmm7, %xmm7, %xmm1     #  7     0x18  4      OPC=vsqrtsd_xmm_xmm_xmm     
  punpckhdq %xmm3, %xmm1          #  8     0x1c  4      OPC=punpckhdq_xmm_xmm       
  retq                            #  9     0x20  1      OPC=retq                    
                                                                                    
.size target, .-target
