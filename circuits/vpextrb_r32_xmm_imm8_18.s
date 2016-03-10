  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vpmovzxbd %xmm1, %ymm14                   #  1     0     5      OPC=vpmovzxbd_ymm_xmm   
  movq $0x20, %rbx                          #  2     0x5   10     OPC=movq_r64_imm64      
  vmovsd %xmm1, %xmm14, %xmm1               #  3     0xf   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x13  5      OPC=callq_label         
  xchgb %bl, %r8b                           #  5     0x18  3      OPC=xchgb_r8_r8         
  retq                                      #  6     0x1b  1      OPC=retq                
                                                                                          
.size target, .-target
