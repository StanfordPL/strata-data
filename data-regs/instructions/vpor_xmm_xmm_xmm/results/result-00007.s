  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovaps %xmm3, %xmm3        #  1     0     4      OPC=vmovaps_xmm_xmm     
  vpxor %xmm2, %xmm3, %xmm1   #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm   
  vminpd %ymm3, %ymm3, %ymm9  #  3     0x8   4      OPC=vminpd_ymm_ymm_ymm  
  orpd %xmm1, %xmm2           #  4     0xc   4      OPC=orpd_xmm_xmm        
  vorps %xmm9, %xmm2, %xmm1   #  5     0x10  5      OPC=vorps_xmm_xmm_xmm   
  retq                        #  6     0x15  1      OPC=retq                
                                                                            
.size target, .-target
