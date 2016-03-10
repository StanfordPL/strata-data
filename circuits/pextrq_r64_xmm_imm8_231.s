  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                        
.target:                                    #        0     0      OPC=<label>                   
  movdqa %xmm1, %xmm3                       #  1     0     4      OPC=movdqa_xmm_xmm            
  vfnmsub213ss %xmm1, %xmm3, %xmm1          #  2     0x4   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label               
  callq .move_032_064_r8d_r9d_rbx           #  4     0xe   5      OPC=callq_label               
  retq                                      #  5     0x13  1      OPC=retq                      
                                                                                                
.size target, .-target
