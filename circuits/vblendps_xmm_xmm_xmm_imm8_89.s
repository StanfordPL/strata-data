  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovss %xmm3, %xmm2, %xmm1      #  1     0     4      OPC=vmovss_xmm_xmm_xmm     
  movshdup %xmm3, %xmm3           #  2     0x4   4      OPC=movshdup_xmm_xmm       
  vunpckhps %xmm3, %xmm2, %xmm11  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  movlhps %xmm11, %xmm1           #  4     0xc   4      OPC=movlhps_xmm_xmm        
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
