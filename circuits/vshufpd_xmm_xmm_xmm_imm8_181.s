  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  movddup %xmm3, %xmm9            #  1     0    5      OPC=movddup_xmm_xmm        
  vmovhlps %xmm9, %xmm9, %xmm14   #  2     0x5  5      OPC=vmovhlps_xmm_xmm_xmm   
  vunpckhpd %xmm14, %xmm2, %xmm1  #  3     0xa  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                            #  4     0xf  1      OPC=retq                   
                                                                                  
.size target, .-target
