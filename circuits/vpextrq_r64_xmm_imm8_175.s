  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vxorpd %ymm4, %ymm4, %ymm15       #  1     0     4      OPC=vxorpd_ymm_ymm_ymm       
  vfmadd213ss %xmm1, %xmm15, %xmm1  #  2     0x4   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9    #  3     0x9   5      OPC=callq_label              
  movq %r9, %rbx                    #  4     0xe   3      OPC=movq_r64_r64             
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
