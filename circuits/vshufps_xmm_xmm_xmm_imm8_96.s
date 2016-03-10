  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vunpckhps %xmm3, %xmm3, %xmm14                  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm    
  vunpcklps %xmm3, %xmm14, %xmm1                  #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vfmadd213ss %xmm2, %xmm1, %xmm1                 #  4     0xd   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  movsldup %xmm8, %xmm12                          #  5     0x12  5      OPC=movsldup_xmm_xmm         
  movsd %xmm12, %xmm1                             #  6     0x17  5      OPC=movsd_xmm_xmm            
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
