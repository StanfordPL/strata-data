  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm14           #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm14, %xmm2, %xmm14  #  2     0x4   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhpd %xmm14, %xmm1            #  3     0x9   5      OPC=unpckhpd_xmm_xmm        
  minsd %xmm1, %xmm1                #  4     0xe   4      OPC=minsd_xmm_xmm           
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
