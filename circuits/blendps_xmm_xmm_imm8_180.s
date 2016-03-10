  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovupd %xmm1, %xmm3            #  1     0     4      OPC=vmovupd_xmm_xmm        
  movshdup %xmm3, %xmm15          #  2     0x4   5      OPC=movshdup_xmm_xmm       
  vunpckhps %xmm15, %xmm2, %xmm4  #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  movddup %xmm4, %xmm6            #  4     0xe   4      OPC=movddup_xmm_xmm        
  vmovsd %xmm1, %xmm6, %xmm12     #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm     
  movapd %xmm12, %xmm1            #  6     0x16  5      OPC=movapd_xmm_xmm         
  retq                            #  7     0x1b  1      OPC=retq                   
                                                                                   
.size target, .-target
