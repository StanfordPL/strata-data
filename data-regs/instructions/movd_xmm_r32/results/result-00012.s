  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movslq %ebx, %r8        #  1     0     3      OPC=movslq_r64_r32     
  movq %r8, %xmm1         #  2     0x3   5      OPC=movq_xmm_r64       
  vpmovzxdq %xmm1, %xmm2  #  3     0x8   5      OPC=vpmovzxdq_xmm_xmm  
  movsd %xmm2, %xmm1      #  4     0xd   4      OPC=movsd_xmm_xmm      
  retq                    #  5     0x11  1      OPC=retq               
                                                                       
.size target, .-target
