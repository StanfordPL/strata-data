  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm5                #  1     0     4      OPC=movd_xmm_r32            
  vpunpckhdq %xmm2, %xmm5, %xmm1  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm5, %xmm2, %xmm13   #  3     0x8   4      OPC=vmovlhps_xmm_xmm_xmm    
  vunpckhps %xmm1, %xmm5, %xmm0   #  4     0xc   4      OPC=vunpckhps_xmm_xmm_xmm   
  vorps %xmm0, %xmm13, %xmm1      #  5     0x10  4      OPC=vorps_xmm_xmm_xmm       
  subsd %xmm0, %xmm1              #  6     0x14  4      OPC=subsd_xmm_xmm           
  retq                            #  7     0x18  1      OPC=retq                    
                                                                                    
.size target, .-target
