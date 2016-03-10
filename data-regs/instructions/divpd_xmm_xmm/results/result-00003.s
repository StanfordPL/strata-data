  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovupd %xmm1, %xmm3        #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovdqa %xmm2, %xmm6        #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vdivpd %ymm6, %ymm3, %ymm4  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movapd %xmm4, %xmm1         #  4     0xc   4      OPC=movapd_xmm_xmm      
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
