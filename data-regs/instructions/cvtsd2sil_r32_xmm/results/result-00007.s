  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                  
.target:                  #        0     0      OPC=<label>             
  vmovddup %xmm1, %xmm3   #  1     0     4      OPC=vmovddup_xmm_xmm    
  vmovq %xmm3, %xmm3      #  2     0x4   4      OPC=vmovq_xmm_xmm       
  vmovdqu %xmm3, %xmm12   #  3     0x8   4      OPC=vmovdqu_xmm_xmm     
  vmovdqa %ymm12, %ymm9   #  4     0xc   5      OPC=vmovdqa_ymm_ymm     
  vcvtsd2sil %xmm9, %ebx  #  5     0x11  5      OPC=vcvtsd2sil_r32_xmm  
  retq                    #  6     0x16  1      OPC=retq                
                                                                        
.size target, .-target
