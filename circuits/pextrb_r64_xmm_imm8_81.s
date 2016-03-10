  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  xorq %rbx, %rbx            #  1     0     3      OPC=xorq_r64_r64          
  vbroadcastss %xmm1, %ymm8  #  2     0x3   5      OPC=vbroadcastss_ymm_xmm  
  vmovq %xmm8, %rax          #  3     0x8   5      OPC=vmovq_r64_xmm         
  cmovnbw %bx, %bx           #  4     0xd   4      OPC=cmovnbw_r16_r16       
  xchgb %bl, %ah             #  5     0x11  2      OPC=xchgb_rh_r8           
  retq                       #  6     0x13  1      OPC=retq                  
                                                                             
.size target, .-target
