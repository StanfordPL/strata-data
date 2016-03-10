  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movd %xmm9, %ebx                                #  2     0x5   5      OPC=movd_r32_xmm       
  vmovmskpd %xmm1, %rcx                           #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  shlb $0x1, %ch                                  #  4     0xe   2      OPC=shlb_rh_one        
  orb %cl, %bl                                    #  5     0x10  2      OPC=orb_r8_r8          
  andl %ecx, %ebx                                 #  6     0x12  2      OPC=andl_r32_r32       
  retq                                            #  7     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
