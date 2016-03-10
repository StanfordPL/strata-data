  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vpmovzxwd %xmm1, %ymm2                    #  1     0     5      OPC=vpmovzxwd_ymm_xmm      
  vunpcklpd %xmm2, %xmm1, %xmm6             #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmaxss %xmm6, %xmm2, %xmm1                #  3     0x9   4      OPC=vmaxss_xmm_xmm_xmm     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label            
  xorb %dh, %ah                             #  5     0x12  2      OPC=xorb_rh_rh             
  callq .read_sf_into_rbx                   #  6     0x14  5      OPC=callq_label            
  xchgl %edx, %ebx                          #  7     0x19  2      OPC=xchgl_r32_r32          
  retq                                      #  8     0x1b  1      OPC=retq                   
                                                                                             
.size target, .-target
