  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vaddpd %xmm3, %xmm2, %xmm6      #  1     0    4      OPC=vaddpd_xmm_xmm_xmm     
  vunpckhpd %xmm3, %xmm2, %xmm14  #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovlhps %xmm14, %xmm6, %xmm1   #  3     0x8  5      OPC=vmovlhps_xmm_xmm_xmm   
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
