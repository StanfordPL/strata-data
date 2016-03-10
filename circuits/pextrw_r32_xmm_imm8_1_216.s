  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm5   #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  vmovd %xmm5, %r9d        #  2     0x5   5      OPC=vmovd_r32_xmm      
  callq .set_cf            #  3     0xa   5      OPC=callq_label        
  callq .read_cf_into_rbx  #  4     0xf   5      OPC=callq_label        
  cmovbl %r9d, %ebx        #  5     0x14  4      OPC=cmovbl_r32_r32     
  retq                     #  6     0x18  1      OPC=retq               
                                                                        
.size target, .-target
