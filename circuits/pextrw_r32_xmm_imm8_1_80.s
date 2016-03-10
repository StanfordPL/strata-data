  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  callq .clear_cf          #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm1, %xmm14  #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  movd %xmm14, %edx        #  3     0xa   5      OPC=movd_r32_xmm       
  callq .read_cf_into_rbx  #  4     0xf   5      OPC=callq_label        
  xchgl %ebx, %edx         #  5     0x14  2      OPC=xchgl_r32_r32      
  retq                     #  6     0x16  1      OPC=retq               
                                                                        
.size target, .-target
