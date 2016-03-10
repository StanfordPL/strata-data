  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  maxpd %xmm2, %xmm2                #  1     0     4      OPC=maxpd_xmm_xmm             
  vfnmsub213ss %xmm2, %xmm1, %xmm2  #  2     0x4   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movhlps %xmm2, %xmm2              #  3     0x9   3      OPC=movhlps_xmm_xmm           
  unpcklpd %xmm2, %xmm1             #  4     0xc   4      OPC=unpcklpd_xmm_xmm          
  retq                              #  5     0x10  1      OPC=retq                      
                                                                                        
.size target, .-target
