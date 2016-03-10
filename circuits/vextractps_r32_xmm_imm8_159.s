  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vmovsldup %xmm1, %xmm2                        #  1     0     4      OPC=vmovsldup_xmm_xmm         
  vfnmadd213ps %ymm2, %ymm2, %ymm2              #  2     0x4   5      OPC=vfnmadd213ps_ymm_ymm_ymm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label               
  shlw $0x1, %r10w                              #  4     0xe   4      OPC=shlw_r16_one              
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  5     0x12  5      OPC=callq_label               
  callq .read_sf_into_rbx                       #  6     0x17  5      OPC=callq_label               
  xchgl %ebx, %r9d                              #  7     0x1c  3      OPC=xchgl_r32_r32             
  retq                                          #  8     0x1f  1      OPC=retq                      
                                                                                                    
.size target, .-target
