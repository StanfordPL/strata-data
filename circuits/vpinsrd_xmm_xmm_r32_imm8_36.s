  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  orb %bh, %bh                #  1     0    2      OPC=orb_rh_rh           
  movd %ebx, %xmm6            #  2     0x2  4      OPC=movd_xmm_r32        
  vmovss %xmm6, %xmm2, %xmm1  #  3     0x6  4      OPC=vmovss_xmm_xmm_xmm  
  retq                        #  4     0xa  1      OPC=retq                
                                                                           
.size target, .-target
