  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  vmovddup %xmm6, %xmm7       #  2     0x4   4      OPC=vmovddup_xmm_xmm    
  vmovd %xmm7, %ebx           #  3     0x8   4      OPC=vmovd_r32_xmm       
  movd %ebx, %xmm1            #  4     0xc   4      OPC=movd_xmm_r32        
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
