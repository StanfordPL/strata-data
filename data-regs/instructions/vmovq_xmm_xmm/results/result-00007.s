  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label              
  vzeroall                                  #  2     0x5   3      OPC=vzeroall                 
  vfmsub231pd %ymm6, %ymm5, %ymm3           #  3     0x8   5      OPC=vfmsub231pd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label              
  callq .move_r8b_to_byte_25_of_ymm1        #  5     0x12  5      OPC=callq_label              
  vmovq %xmm1, %r13                         #  6     0x17  5      OPC=vmovq_r64_xmm            
  callq .move_064_128_r12_r13_xmm1          #  7     0x1c  5      OPC=callq_label              
  retq                                      #  8     0x21  1      OPC=retq                     
                                                                                               
.size target, .-target
