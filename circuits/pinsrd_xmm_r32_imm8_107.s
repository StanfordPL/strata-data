  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm12              #  1     0     4      OPC=vmovd_xmm_r32          
  vhaddpd %xmm12, %xmm1, %xmm3    #  2     0x4   5      OPC=vhaddpd_xmm_xmm_xmm    
  vunpckhps %xmm3, %xmm1, %xmm11  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1          #  4     0xd   5      OPC=unpcklpd_xmm_xmm       
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
