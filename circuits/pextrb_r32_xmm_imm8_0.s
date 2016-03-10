  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxbd %xmm1, %xmm3  #  1     0    5      OPC=vpmovzxbd_xmm_xmm  
  xorq %rbx, %rbx         #  2     0x5  3      OPC=xorq_r64_r64       
  vmovd %xmm3, %ecx       #  3     0x8  4      OPC=vmovd_r32_xmm      
  addb %cl, %bl           #  4     0xc  2      OPC=addb_r8_r8         
  retq                    #  5     0xe  1      OPC=retq               
                                                                      
.size target, .-target
