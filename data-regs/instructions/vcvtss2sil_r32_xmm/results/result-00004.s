  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovupd %xmm1, %xmm11   #  1     0    4      OPC=vmovupd_xmm_xmm    
  cvtss2sil %xmm11, %ebx  #  2     0x4  5      OPC=cvtss2sil_r32_xmm  
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
