  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13       #  1     0     5      OPC=callq_label              
  vfmadd132ps %xmm3, %xmm13, %xmm2          #  2     0x5   5      OPC=vfmadd132ps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label              
  vzeroall                                  #  4     0xf   3      OPC=vzeroall                 
  movd %r9d, %xmm1                          #  5     0x12  5      OPC=movd_xmm_r32             
  vfmadd231ss %xmm8, %xmm2, %xmm1           #  6     0x17  5      OPC=vfmadd231ss_xmm_xmm_xmm  
  retq                                      #  7     0x1c  1      OPC=retq                     
                                                                                               
.size target, .-target
