  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label      
  movd %eax, %xmm6                          #  2     0x5  4      OPC=movd_xmm_r32     
  vmovups %xmm6, %xmm1                      #  3     0x9  4      OPC=vmovups_xmm_xmm  
  retq                                      #  4     0xd  1      OPC=retq             
                                                                                      
.size target, .-target
