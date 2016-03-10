  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  unpckhps %xmm1, %xmm1                     #  1     0     3      OPC=unpckhps_xmm_xmm  
  pmovzxwq %xmm1, %xmm2                     #  2     0x3   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label       
  callq .move_032_064_r8d_r9d_rbx           #  4     0xd   5      OPC=callq_label       
  retq                                      #  5     0x12  1      OPC=retq              
                                                                                        
.size target, .-target
