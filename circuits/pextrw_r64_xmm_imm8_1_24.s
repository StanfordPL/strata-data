  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm2  #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vpmovzxwq %xmm2, %xmm0     #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm     
  vmovq %xmm0, %rbx          #  3     0xa   5      OPC=vmovq_r64_xmm         
  andq %rbx, %rbx            #  4     0xf   3      OPC=andq_r64_r64          
  retq                       #  5     0x12  1      OPC=retq                  
                                                                             
.size target, .-target
