  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vandnps %xmm1, %xmm1, %xmm5       #  1     0     4      OPC=vandnps_xmm_xmm_xmm       
  movdqu %xmm2, %xmm7               #  2     0x4   4      OPC=movdqu_xmm_xmm            
  vaddsubpd %xmm7, %xmm5, %xmm8     #  3     0x8   4      OPC=vaddsubpd_xmm_xmm_xmm     
  vfnmsub231sd %xmm8, %xmm1, %xmm5  #  4     0xc   5      OPC=vfnmsub231sd_xmm_xmm_xmm  
  vmovups %ymm5, %ymm13             #  5     0x11  4      OPC=vmovups_ymm_ymm           
  vmovq %xmm5, %xmm3                #  6     0x15  4      OPC=vmovq_xmm_xmm             
  movups %xmm3, %xmm1               #  7     0x19  3      OPC=movups_xmm_xmm            
  haddpd %xmm13, %xmm1              #  8     0x1c  5      OPC=haddpd_xmm_xmm            
  retq                              #  9     0x21  1      OPC=retq                      
                                                                                        
.size target, .-target
