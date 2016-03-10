  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vaddss %xmm1, %xmm1, %xmm3                #  1     0     4      OPC=vaddss_xmm_xmm_xmm   
  movq $0xffffffffffffffe0, %rbx            #  2     0x4   10     OPC=movq_r64_imm64       
  vcvttsd2sil %xmm1, %r9d                   #  3     0xe   4      OPC=vcvttsd2sil_r32_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0x12  5      OPC=callq_label          
  xaddq %rbx, %r9                           #  5     0x17  4      OPC=xaddq_r64_r64        
  retq                                      #  6     0x1b  1      OPC=retq                 
                                                                                           
.size target, .-target
