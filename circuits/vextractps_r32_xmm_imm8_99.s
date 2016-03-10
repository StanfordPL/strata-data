  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vmovddup %xmm1, %xmm4                     #  1     0     4      OPC=vmovddup_xmm_xmm     
  vcvttss2sil %xmm4, %r9d                   #  2     0x4   4      OPC=vcvttss2sil_r32_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label          
  movq $0xfffffffffffffff8, %rbx            #  4     0xd   10     OPC=movq_r64_imm64       
  xaddq %rbx, %r9                           #  5     0x17  4      OPC=xaddq_r64_r64        
  retq                                      #  6     0x1b  1      OPC=retq                 
                                                                                           
.size target, .-target
