  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  vmovd %r8d, %xmm3               #  2     0x5   5      OPC=vmovd_xmm_r32      
  pmovzxwd %xmm3, %xmm6           #  3     0xa   5      OPC=pmovzxwd_xmm_xmm   
  vpmovsxbq %xmm6, %ymm1          #  4     0xf   5      OPC=vpmovsxbq_ymm_xmm  
  retq                            #  5     0x14  1      OPC=retq               
                                                                               
.size target, .-target
