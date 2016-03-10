  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  movhlps %xmm1, %xmm1                      #  1     0     3      OPC=movhlps_xmm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label        
  vpmovzxwq %xmm1, %xmm12                   #  3     0x8   5      OPC=vpmovzxwq_xmm_xmm  
  movmskpd %xmm12, %rbx                     #  4     0xd   5      OPC=movmskpd_r64_xmm   
  xaddl %r9d, %ebx                          #  5     0x12  4      OPC=xaddl_r32_r32      
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
