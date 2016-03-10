  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmadd132ss %xmm1, %xmm1, %xmm1  #  1     0     5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm1, %xmm6      #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm      
  movapd %xmm6, %xmm7               #  3     0x9   4      OPC=movapd_xmm_xmm            
  movups %xmm7, %xmm10              #  4     0xd   4      OPC=movups_xmm_xmm            
  vmovq %xmm10, %rbx                #  5     0x11  5      OPC=vmovq_r64_xmm             
  retq                              #  6     0x16  1      OPC=retq                      
                                                                                        
.size target, .-target
