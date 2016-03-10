  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  movq $0x6, %rbx                                 #  1     0     10     OPC=movq_r64_imm64        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0xa   5      OPC=callq_label           
  vbroadcastss %xmm9, %xmm1                       #  3     0xf   5      OPC=vbroadcastss_xmm_xmm  
  vbroadcastsd %xmm1, %ymm1                       #  4     0x14  5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d        #  5     0x19  5      OPC=callq_label           
  xchgl %ebx, %edx                                #  6     0x1e  2      OPC=xchgl_r32_r32         
  retq                                            #  7     0x20  1      OPC=retq                  
                                                                                                  
.size target, .-target
