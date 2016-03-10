  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm8             #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  vandps %xmm1, %xmm8, %xmm2                #  2     0x4   4      OPC=vandps_xmm_xmm_xmm     
  callq .move_128_064_xmm2_r8_r9            #  3     0x8   5      OPC=callq_label            
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label            
  movq %r9, %rbx                            #  5     0x12  3      OPC=movq_r64_r64           
  retq                                      #  6     0x15  1      OPC=retq                   
                                                                                             
.size target, .-target
