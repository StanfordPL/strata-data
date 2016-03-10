  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovq %rcx, %xmm15               #  1     0     5      OPC=vmovq_xmm_r64          
  vmovq %rbx, %xmm1                #  2     0x5   5      OPC=vmovq_xmm_r64          
  vcvtsd2ss %xmm15, %xmm15, %xmm6  #  3     0xa   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vpmovzxdq %xmm6, %xmm14          #  4     0xf   5      OPC=vpmovzxdq_xmm_xmm      
  movmskpd %xmm14, %rcx            #  5     0x14  5      OPC=movmskpd_r64_xmm       
  vpand %xmm15, %xmm1, %xmm3       #  6     0x19  5      OPC=vpand_xmm_xmm_xmm      
  vmovq %xmm3, %rbx                #  7     0x1e  5      OPC=vmovq_r64_xmm          
  orq %rcx, %rbx                   #  8     0x23  3      OPC=orq_r64_r64            
  retq                             #  9     0x26  1      OPC=retq                   
                                                                                    
.size target, .-target
