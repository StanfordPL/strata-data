  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  movq $0x0, %rbx        #  1     0     10     OPC=movq_r64_imm64   
  vmovupd %xmm1, %xmm10  #  2     0xa   4      OPC=vmovupd_xmm_xmm  
  movd %xmm10, %edx      #  3     0xe   5      OPC=movd_r32_xmm     
  xchgb %bl, %dh         #  4     0x13  2      OPC=xchgb_rh_r8      
  retq                   #  5     0x15  1      OPC=retq             
                                                                    
.size target, .-target
