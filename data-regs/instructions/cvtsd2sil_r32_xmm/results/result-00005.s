  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovdqu %xmm1, %xmm14    #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vcvtsd2sil %xmm14, %ebx  #  2     0x4  5      OPC=vcvtsd2sil_r32_xmm  
  retq                     #  3     0x9  1      OPC=retq                
                                                                        
.size target, .-target
