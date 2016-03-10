  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmovapd %xmm2, %xmm11             #  1     0     4      OPC=vmovapd_xmm_xmm           
  vmovss %xmm3, %xmm11, %xmm1       #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm        
  vfnmadd231ss %xmm1, %xmm1, %xmm1  #  3     0x8   5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  maxss %xmm3, %xmm1                #  4     0xd   4      OPC=maxss_xmm_xmm             
  retq                              #  5     0x11  1      OPC=retq                      
                                                                                        
.size target, .-target
