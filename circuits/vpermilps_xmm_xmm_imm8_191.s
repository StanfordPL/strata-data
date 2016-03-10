  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm3          #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm2, %xmm3, %xmm5  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movddup %xmm5, %xmm14           #  3     0x8   5      OPC=movddup_xmm_xmm         
  vunpckhpd %xmm14, %xmm3, %xmm1  #  4     0xd   5      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
