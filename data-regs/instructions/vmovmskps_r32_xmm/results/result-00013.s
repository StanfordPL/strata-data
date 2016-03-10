  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm3  #  1     0     5      OPC=vpmovsxwd_ymm_xmm  
  xorq %rbx, %rbx         #  2     0x5   3      OPC=xorq_r64_r64       
  rclb $0x1, %bl          #  3     0x8   2      OPC=rclb_r8_one        
  adcb %bh, %bh           #  4     0xa   2      OPC=adcb_rh_rh         
  vmovmskpd %ymm3, %rax   #  5     0xc   4      OPC=vmovmskpd_r64_ymm  
  cltq                    #  6     0x10  2      OPC=cltq               
  xchgl %eax, %ebx        #  7     0x12  1      OPC=xchgl_r32_eax      
  retq                    #  8     0x13  1      OPC=retq               
                                                                       
.size target, .-target
