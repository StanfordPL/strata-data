  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpmovzxdq %xmm1, %ymm10                   #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  vdivpd %ymm10, %ymm10, %ymm14             #  2     0x5   5      OPC=vdivpd_ymm_ymm_ymm       
  vfmadd213ss %xmm1, %xmm14, %xmm1          #  3     0xa   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xf   5      OPC=callq_label              
  movzbq %r8b, %rbx                         #  5     0x14  4      OPC=movzbq_r64_r8            
  retq                                      #  6     0x18  1      OPC=retq                     
                                                                                               
.size target, .-target
