  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovlhps %xmm3, %xmm3, %xmm5    #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm    
  movsldup %xmm3, %xmm0           #  2     0x4   4      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm0, %xmm8  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm5, %xmm8, %xmm1      #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
