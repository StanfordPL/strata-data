  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm13, %ymm2                   #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  movmskpd %xmm2, %r13                      #  3     0xa   5      OPC=movmskpd_r64_xmm   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xf   5      OPC=callq_label        
  decw %r13w                                #  5     0x14  4      OPC=decw_r16           
  vmovmskpd %xmm12, %rbx                    #  6     0x18  5      OPC=vmovmskpd_r64_xmm  
  cmovsw %r9w, %bx                          #  7     0x1d  5      OPC=cmovsw_r16_r16     
  retq                                      #  8     0x22  1      OPC=retq               
                                                                                         
.size target, .-target
